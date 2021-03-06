import System.Environment
import SudokuUtils as SU
import HasegawaAranSolver as HAS

solvers :: [(SudokuBoard->[SudokuBoard])]
solvers = [HAS.mySolver]

main = do
	args <- getArgs
     	let solverIndex = read $ args !! 0 :: Int
	let problemIndex = read $ args !! 1 :: Int
	SU.solveProblem problemIndex $ solvers !! solverIndex
