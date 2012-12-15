var filename = String(""); 
var projfls = this.readTextFile(filename);

function readTextFile(name) {
	var fmr_files = [];
	var vtc_names = [];
	var x_start = [];
	var x_end = [];
	var y_start = [];
	var y_end = [];
	var z_start = [];
	var z_end = [];
	var filecounter;
	BrainVoyagerQX.PrintToLog("Reading: " + name);
	var filenamesfile = new QFile(name);
	filenamesfile.open(new QIODevice.OpenMode(QIODevice.ReadOnly));
	var textstr = new QTextStream(filenamesfile);
	var nroffiles = parseInt(textstr.readLine());
	var VMR_path = textstr.readLine();
	var FA_path = textstr.readLine();
	var IA_path = textstr.readLine();
	var fmr_regex = /.fmr/;
	var name_regex = /.*[^(.fmr)]/
	var xcoords_regex = /(BV.*X\: )(\d+)( )(\d+)/;
	var ycoords_regex = /(BV.*Y\: )(\d+)( )(\d+)/;
	var zcoords_regex = /(BV.*Z\: )(\d+)( )(\d+)/;
 	for (filecounter = 0; filecounter < nroffiles; filecounter++) {
		var filename = textstr.readLine();
		if(name_regex.test(filename) == true) {
			var match = name_regex.exec(filename);
			var vtc = "_NATIVE.vtc";
			var newmatch = match + vtc;
			vtc_names.push(newmatch); 
		}
		if(fmr_regex.test(filename) == true) {
 		fmr_files.push(filename);
		}
		if(xcoords_regex.test(filename) == true) {
			var match = xcoords_regex.exec(filename);
			y_start.push(match[2]);
			y_end.push(match[4]);
		}
		if(ycoords_regex.test(filename) == true) {
			var match = ycoords_regex.exec(filename);
			z_start.push(match[2]);
			z_end.push(match[4]);
		}
		if(zcoords_regex.test(filename) == true) {
			var match = zcoords_regex.exec(filename);
			x_start.push(match[2]);
			x_end.push(match[4]);
		}
	}
	var i;
	for (i=0; i<nroffiles; i++) {	 
		var VMR = BrainVoyagerQX.OpenDocument(VMR_path);
		VMR.UseBoundingBoxForVTCCreation = true;
	 	VMR.TargetVTCBoundingBoxXStart  = x_start;
		VMR.TargetVTCBoundingBoxXEnd    = x_end;
		VMR.TargetVTCBoundingBoxYStart  = y_start;
		VMR.TargetVTCBoundingBoxYEnd   = y_end;
		VMR.TargetVTCBoundingBoxZStart  = z_start;
		VMR.TargetVTCBoundingBoxZEnd   = z_end;
		VMR.ExtendedTALSpaceForVTCCreation = false;
		var make_VTC = VMR.CreateVTCInVMRSpace(fmr_files[i], IA_path, FA_path, vtc_names[i], 1, 2, 1, 100);
		VMR.Close();
	}
filenamesfile.close();  
}
