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
            VARIANT FormulaText,
            int *errorParam /Out/) = 0;

        virtual HRESULT SolverChange(
            VARIANT CellRef,
            int Relation,
            VARIANT FormulaText,
            int *errorParam /Out/) = 0;

        virtual HRESULT SolverDelete(
            VARIANT CellRef,
            int Relation,
            VARIANT FormulaText,
            int *errorParam /Out/) = 0;

        virtual HRESULT SolverFinish(
            VARIANT KeepFinal,
            VARIANT ReportArry,
            VARIANT OutlineReports,
            int *errorParam /Out/) = 0;

        virtual HRESULT SolverOk(
            VARIANT SetCell,
            VARIANT MaxMinVal,
            VARIANT ValueOf,
            VARIANT ByChange,
            VARIANT Engine,
            VARIANT EngineDesc,
            int *errorParam /Out/) = 0;
/*
        virtual HRESULT SolverOptions(
            VARIANT MaxTime,
            VARIANT Iterations,
            VARIANT Precision,
            VARIANT AssumeLinear,
            VARIANT StepThru,
            VARIANT Estimates,
            VARIANT Derivatives,
            VARIANT SearchOption,
            VARIANT IntTolerance,
            VARIANT Scaling,
            VARIANT Convergence,
            VARIANT AssumeNonNeg,
            VARIANT PopulationSize,
            VARIANT randomSeed,
            VARIANT MultiStart,
            VARIANT RequireBounds,
            VARIANT MutationRate,
            VARIANT MaxSubproblems,
            VARIANT MaxIntegerSols,
            VARIANT SolveWithout,
            VARIANT MaxTimeNoImp,
            int *errorParam /Out/) = 0;
*/
        virtual HRESULT SolverReset() = 0;

        virtual HRESULT SolverSolve(
            VARIANT UserFinish,
            VARIANT ShowRef,
            int *SolverResult /Out/) = 0;

    };
};
