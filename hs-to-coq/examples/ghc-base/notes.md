* Generated modules, what are we skipping in them and why?

  GHC/List
  Data/Tuple
  Data/Maybe
  Data/Function
  Data/Ord
  Data/Functor
  Data/Monoid
  Control/Monad
  Data/OldList
  Data/Traversable
  Data/Void
  Data/List
  Data/Char
  Data/Bool

* What stops these modules from being generated?

- GHC/BaseInstances
  Bug in instance generation for partially applied type constructors

- Data/Type/Equality
  functional dependencies

- Control/Category
  Type inference: need to annotate type of cat in class definition.
  Class Category cat := {
    id : forall {a}, cat a a ;
    op_z2218U__ : forall {b} {c} {a}, cat b c -> cat a b -> cat a c }.

- Data/Functor/Const
  Type inference: need to annotate type of first argument to Const
  Deriving: most of the functionality of this module comes from
  type class deriving
  (NOTE: most of the instances are NOT available)

- Data/Foldable
  Heavy use of Data.Coerce
  NOTE: without translation, default methods are unavailable. Ugh.

- GHC/Enum
- GHC/Num
- GHC/Char
- GHC/Real
- GHC/Unicode
- Data/Bits
- Data/Either
- Data/Proxy
- Control/Arrow


- Prelude

* What features/modules are missing from Base?

- Partial modules

Control.Monad.Fail
Control.Monad.Fix

- Modules that support imperative features

Control.Concurrent
Control.Concurrent.Chan
Control.Concurrent.MVar
Control.Concurrent.QSem
Control.Concurrent.QSemN
Control.Exception
Control.Exception.Base
Control.Monad.IO.Class
Control.Monad.ST
Control.Monad.ST.Lazy
Control.Monad.ST.Lazy.Safe
Control.Monad.ST.Lazy.Unsafe
Control.Monad.ST.Safe
Control.Monad.ST.Strict
Control.Monad.ST.Unsafe
Control.Monad.Zip
Data.IORef
Data.Ix
Data.STRef
Data.STRef.Lazy
Data.STRef.Strict
Foreign.C
Foreign.C.Error
Foreign.C.String
Foreign.C.Types
Foreign.Concurrent
Foreign.ForeignPtr
Foreign.ForeignPtr.Safe
Foreign.ForeignPtr.Unsafe
Foreign.Marshal
Foreign.Marshal.Alloc
Foreign.Marshal.Array
Foreign.Marshal.Error
Foreign.Marshal.Pool
Foreign.Marshal.Safe
Foreign.Marshal.Unsafe
Foreign.Marshal.Utils
Foreign.Ptr
Foreign.Safe
Foreign.StablePtr
Foreign.Storable
GHC.Arr
GHC.Conc
GHC.Conc.IO
GHC.Conc.Signal
GHC.Conc.Sync
GHC.Conc.Windows
GHC.ConsoleHandler
GHC.IO
GHC.IO.Buffer
GHC.IO.BufferedIO
GHC.IO.Device
GHC.IO.Encoding
GHC.IO.Encoding.CodePage
GHC.IO.Encoding.CodePage.API
GHC.IO.Encoding.CodePage.Table
GHC.IO.Encoding.Failure
GHC.IO.Encoding.Iconv
GHC.IO.Encoding.Latin1
GHC.IO.Encoding.Types
GHC.IO.Encoding.UTF16
GHC.IO.Encoding.UTF32
GHC.IO.Encoding.UTF8
GHC.IO.Exception
GHC.IO.FD
GHC.IO.Handle
GHC.IO.Handle.FD
GHC.IO.Handle.Internals
GHC.IO.Handle.Lock
GHC.IO.Handle.Text
GHC.IO.Handle.Types
GHC.IO.IOMode
GHC.IO.Unsafe
GHC.IOArray
GHC.IORef
GHC.MVar
GHC.Environment
GHC.Event
GHC.ExecutionStack
GHC.ExecutionStack.Internal
GHC.PArr
GHC.Pack
GHC.Profiling
GHC.Ptr
GHC.RTS.Flags
GHC.ST
GHC.STRef
GHC.Stack
GHC.Stack.CCS
GHC.Stack.Types
GHC.Stable
GHC.StaticPtr
System.CPUTime
GHC.Storable
GHC.TopHandler
GHC.Windows
System.Console.GetOpt
System.Environment
System.Exit
System.IO
System.IO.Error
System.IO.Unsafe
System.Info
System.Mem
System.Mem.StableName
System.Mem.Weak
System.Posix.Internals
System.Posix.Types
System.Timeout
GHC.Stats

- marshalling/unmarshalling

GHC.Read
GHC.Show
Text.Printf

- "empty" or deprecated modules

GHC.Constants
Control.Monad.Instances

- Modules that wrap GHC language features not
  found in Coq.

Data.Type.Coercion
Data.Coerce

Data.Data
Data.Dynamic
Data.Typeable
Data.Unique

Debug.Trace

GHC.Fingerprint
GHC.Fingerprint.Type

GHC.Foreign
GHC.ForeignPtr
GHC.GHCi
GHC.Generics

GHC.Exts

GHC.Weak

Type.Reflection
Type.Reflection.Unsafe
Unsafe.Coerce

- What are these?

GHC.Desugar
GHC.Err
GHC.Exception


- Modules with features we haven't implemented yet

Control.Applicative
  hs-to-coq silently fails
  but it is mostly newtype instances that we cannot yet generated


- All other modules


X Control.Arrow
X Control.Category
X Control.Monad
Data.Bifoldable
Data.Bifunctor
Data.Bitraversable
X Data.Bits
X Data.Bool
X Data.Char
Data.Complex
X Data.Either
X Data.Eq
Data.Fixed
X Data.Foldable
X Data.Function
X Data.Functor
Data.Functor.Classes
Data.Functor.Compose
Data.Functor.Const
Data.Functor.Identity
Data.Functor.Product
Data.Functor.Sum
Data.Int
Data.Kind
X Data.List
Data.List.NonEmpty
X Data.Maybe
X Data.Monoid
X Data.Ord
X Data.Proxy
Data.Ratio
Data.Semigroup
Data.String
X Data.Traversable
X Data.Tuple
Data.Type.Bool -- type families
X Data.Type.Equality
Data.Version
X Data.Void
Data.Word
X GHC.Base
X GHC.Char
X GHC.Enum
GHC.Float
GHC.Float.ConversionUtils
GHC.Float.RealFracMethods
GHC.Int
X GHC.List
GHC.Natural  -- needs unboxed ints
X GHC.Num
X GHC.OldList
GHC.OverloadedLabels -- needs symbol
X GHC.Real
GHC.Records
GHC.TypeLits -- needs type families
GHC.TypeNats -- needs type families
X GHC.Unicode
GHC.Word
Numeric.Natural -- unboxed ints
Text.ParserCombinators.ReadP
Text.ParserCombinators.ReadPrec
Text.Read
Text.Read.Lex
Text.Show
Text.Show.Functions