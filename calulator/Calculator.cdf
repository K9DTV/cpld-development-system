/* Quartus II Programmer chain -- K9DTV CPLD Development System (PLCC-44) */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Cfg)
		Device PartName(EPM7064AELC44) Path("./") File("Calculator.pof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
