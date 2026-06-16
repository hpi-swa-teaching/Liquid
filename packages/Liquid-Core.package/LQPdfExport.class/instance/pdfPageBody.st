printing
pdfPageBody

	^ '<< /Type /Page /Parent 2 0 R /MediaBox [0 0 ', self pageWidth asString, ' ', self pageHeight asString, '] ', '/Contents 4 0 R ', '/Resources << /Font << /F1 5 0 R >> /XObject << ', self pdfXObject, ' >> >> >>'