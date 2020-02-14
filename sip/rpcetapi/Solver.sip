/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct Solver : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT SolverAdd(
            VARIANT CellRef,
            int Relation,
            VARIANT FormulaText = argMissing2(),
            int *errorParam /Out/ = 0) = 0;

        virtual HRESULT SolverChange(
            VARIANT CellRef,
            int Relation,
            VARIANT FormulaText = argMissing2(),
            int *errorParam /Out/ = 0) = 0;

        virtual HRESULT SolverDelete(
            VARIANT CellRef,
            int Relation,
            VARIANT FormulaText = argMissing2(),
            int *errorParam /Out/ = 0) = 0;

        virtual HRESULT SolverFinish(
            VARIANT KeepFinal = argMissing2(),
            VARIANT ReportArry = argMissing2(),
            VARIANT OutlineReports = argMissing2(),
            int *errorParam /Out/ = 0) = 0;

        virtual HRESULT SolverOk(
            VARIANT SetCell = argMissing2(),
            VARIANT MaxMinVal = argMissing2(),
            VARIANT ValueOf = argMissing2(),
            VARIANT ByChange = argMissing2(),
            VARIANT Engine = argMissing2(),
            VARIANT EngineDesc = argMissing2(),
            int *errorParam /Out/ = 0) = 0;
/*
        virtual HRESULT SolverOptions(
            VARIANT MaxTime = argMissing2(),
            VARIANT Iterations = argMissing2(),
            VARIANT Precision = argMissing2(),
            VARIANT AssumeLinear = argMissing2(),
            VARIANT StepThru = argMissing2(),
            VARIANT Estimates = argMissing2(),
            VARIANT Derivatives = argMissing2(),
            VARIANT SearchOption = argMissing2(),
            VARIANT IntTolerance = argMissing2(),
            VARIANT Scaling = argMissing2(),
            VARIANT Convergence = argMissing2(),
            VARIANT AssumeNonNeg = argMissing2(),
            VARIANT PopulationSize = argMissing2(),
            VARIANT randomSeed = argMissing2(),
            VARIANT MultiStart = argMissing2(),
            VARIANT RequireBounds = argMissing2(),
            VARIANT MutationRate = argMissing2(),
            VARIANT MaxSubproblems = argMissing2(),
            VARIANT MaxIntegerSols = argMissing2(),
            VARIANT SolveWithout = argMissing2(),
            VARIANT MaxTimeNoImp = argMissing2(),
            int *errorParam /Out/ = 0) = 0;
*/
        virtual HRESULT SolverReset() = 0;

        virtual HRESULT SolverSolve(
            VARIANT UserFinish = argMissing2(),
            VARIANT ShowRef = argMissing2(),
            int *SolverResult /Out/ = 0) = 0;

    };
};
