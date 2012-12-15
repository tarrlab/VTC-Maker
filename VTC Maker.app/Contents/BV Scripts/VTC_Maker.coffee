# Define readTextFile function to read contents of text file
# Function will extract information and set variables for items needed for the CreateVTC BrainVoyager command

readTextFile = (name) ->
  # Setup empty variables for things we need to find in the text file and save
  fmr_files = []
  vtc_names = []
  x_start = []
  x_end = []
  y_start = []
  y_end = []
  z_start = []
  z_end = []
  # Print "Reading textfile.txt" to the BrainVoyager log pane so that the user knows the script is going.
  BrainVoyagerQX.PrintToLog "Reading: " + name
  # Setup file to read
  filenamesfile = new QFile(name)
  # Open the file
  filenamesfile.open new QIODevice.OpenMode(QIODevice.ReadOnly)
  # Set a variable to the text of the file
  textstr = new QTextStream(filenamesfile)
  # Set a variable to the total number of lines in the document (i.e. whatever the first line says)
  # This is to keep track of where we are in the file and to be able to iterate line by line
  nroffiles = parseInt(textstr.readLine())
  # Set VMR_path to the next line
  VMR_path = textstr.readLine()
  # Set FMR_path to the next line
  FA_path = textstr.readLine()
  # Etc.
  IA_path = textstr.readLine()
  # Setup a variable to store a regular expression we'll use to locate the lines with .fmr
  fmr_regex = /.fmr/
  # Setup another regular expression that we'll use to figure out what the names of the files are (everything that precedes the .fmr extension)
  name_regex = /.*[^(.fmr)]/
  # Setup regex variables to find each of the x/y/z coordinates using regular expressions (grouped to access each one individually)
  xcoords_regex = /(BV.*X\: )(\d+)( )(\d+)/
  ycoords_regex = /(BV.*Y\: )(\d+)( )(\d+)/
  zcoords_regex = /(BV.*Z\: )(\d+)( )(\d+)/
  # Start the file counter at zero
  filecounter = 0
  # While loop: do stuff until the counter is equal to the total number of lines in the document
  # This loop goes through each line of the document and searches it using regular expressions to figure out which variables to set and store
  while filecounter < nroffiles
    # Set filename to the first line of the document
    filename = textstr.readLine()
    # If this line contains the path of a .fmr file
    if name_regex.test(filename) is true
      # Set match to the name of the file (everything up until .fmr)
      match = name_regex.exec(filename)
      vtc = "_NATIVE.vtc"
      # Combine the match with "_NATIVE.vtc".
      newmatch = match + vtc
      # Push the full name ("filename_NATIVE.vtc") to the vtc_names array
      vtc_names.push newmatch
    fmr_files.push filename  if fmr_regex.test(filename) is true
    # Search for the x, y, and z coordinates, set them if the line contains one of the three
    if xcoords_regex.test(filename) is true
      match = xcoords_regex.exec(filename)
      y_start.push match[2]
      y_end.push match[4]
    if ycoords_regex.test(filename) is true
      match = ycoords_regex.exec(filename)
      z_start.push match[2]
      z_end.push match[4]
    if zcoords_regex.test(filename) is true
      match = zcoords_regex.exec(filename)
      x_start.push match[2]
      x_end.push match[4]
    filecounter++
  i = 0
  # Issue the VTC creation commands to BrainVoyager
  while i < nroffiles
    VMR = BrainVoyagerQX.OpenDocument(VMR_path)
    VMR.UseBoundingBoxForVTCCreation = true
    VMR.TargetVTCBoundingBoxXStart = x_start
    VMR.TargetVTCBoundingBoxXEnd = x_end
    VMR.TargetVTCBoundingBoxYStart = y_start
    VMR.TargetVTCBoundingBoxYEnd = y_end
    VMR.TargetVTCBoundingBoxZStart = z_start
    VMR.TargetVTCBoundingBoxZEnd = z_end
    VMR.ExtendedTALSpaceForVTCCreation = false
    make_VTC = VMR.CreateVTCInVMRSpace(fmr_files[i], IA_path, FA_path, vtc_names[i], 1, 2, 1, 100)
    VMR.Close()
    i++
  filenamesfile.close()
# PASTE HERE
filename = String("/Users/Deb/Desktop/_BV-ME10/ME10.txt")
projfls = @readTextFile(filename)
