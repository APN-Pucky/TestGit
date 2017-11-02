// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------
//#define NDEBUG


//#define TYRANT_OPTIMIZER_VERSION "vX.XX.XX"

#ifndef TYRANT_OPTIMIZER_VERSION
#  define TYRANT_OPTIMIZER_VERSION "NO VERSION"
#endif



#define BOOST_THREAD_USE_LIB
#include <cassert>
#include <chrono>
#include <cstring>
#include <ctime>
#include <functional>
#include <iostream>
#include <map>
#include <unordered_map>
#include <set>
#include <stack>
#include <string>
#include <tuple>
#include <vector>
#include <boost/algorithm/string.hpp>
#include <boost/filesystem.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/math/distributions/binomial.hpp>
#include <boost/optional.hpp>
#include <boost/range/join.hpp>
#include <boost/thread/barrier.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/thread.hpp>
#include <boost/tokenizer.hpp>

int main(int argc, char** argv)
{
    if (argc == 2 && strcmp(argv[1], "-version") == 0)
    {
        std::cout << "Tyrant Unleashed Optimizer " << TYRANT_OPTIMIZER_VERSION << std::endl;
        return 0;
    }
    if (argc <= 2)
    {
        //usage(argc, argv);
        return 255;
    }
}