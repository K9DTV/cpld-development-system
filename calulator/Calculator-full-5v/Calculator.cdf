/* Quartus II Programmer chain -- Calculator full (MAX 7000S 5 V) */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Cfg)
		Device PartName(EPM7064SLC44) Path("./") File("Calculator.pof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
