// ConcertTof
List<double> convertToF(List<double> temperaturesInC);
def convertToF(temperaturesInC):
    temperaturesInF = [(temp * 9/5) + 32 for temp in temperaturesInC]
    return temperaturesInF
