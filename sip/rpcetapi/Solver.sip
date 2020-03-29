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

        virtual HRESULT SolverOptions(
            /*VARIANT MaxTime = argMissing2(),
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
            int *errorParam /Out/ = 0*/) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            SolverOptions(self, MaxTime: Any = None, Iterations: Any = None, Precision: Any = None, AssumeLinear: Any = None, StepThru: Any = None, Estimates: Any = None, Derivatives: Any = None, SearchOption: Any = None, IntTolerance: Any = None, Scaling: Any = None, Convergence: Any = None, AssumeNonNeg: Any = None, PopulationSize: Any = None, randomSeed: Any = None, MultiStart: Any = None, RequireBounds: Any = None, MutationRate: Any = None, MaxSubproblems: Any = None, MaxIntegerSols: Any = None, SolveWithout: Any = None, MaxTimeNoImp: Any = None) -> Tuple[int, int]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 21)
            {
                PyErr_Format(PyExc_TypeError,
                    "SolverOptions() takes from 0 to 21 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[21];
            for (int i = posArgsCount; i < 21; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "MaxTime",
                "Iterations",
                "Precision",
                "AssumeLinear",
                "StepThru",
                "Estimates",
                "Derivatives",
                "SearchOption",
                "IntTolerance",
                "Scaling",
                "Convergence",
                "AssumeNonNeg",
                "PopulationSize",
                "randomSeed",
                "MultiStart",
                "RequireBounds",
                "MutationRate",
                "MaxSubproblems",
                "MaxIntegerSols",
                "SolveWithout",
                "MaxTimeNoImp"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes))
                return nullptr;

            etapi::Solver *sipCpp = reinterpret_cast<etapi::Solver *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi_Solver));

            int prop = 0;
            HRESULT hr = sipCpp->SolverOptions(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                &prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(ii)", hr, prop);
        %End

        virtual HRESULT SolverReset() = 0;

        virtual HRESULT SolverSolve(
            VARIANT UserFinish = argMissing2(),
            VARIANT ShowRef = argMissing2(),
            int *SolverResult /Out/ = 0) = 0;

    };
};
