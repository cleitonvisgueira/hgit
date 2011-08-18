{-# LANGUAGE TemplateHaskell #-}
module Test.Cases.Commit where
import Test.Framework.Providers.QuickCheck2
import Test.Framework
import Test.QuickCheck

import Test.Util
import qualified Git.Commit as Commit
import qualified Git.Oid as Oid
import qualified Git.Tree as Tree

prop_lookup_non_existing_commit oid = 
  with_repo $ \repo -> do
    fails $ Commit.lookup repo oid
    
prop_lookup_existing_commit = error "tbd: test lookup existing commit"::Bool 
    
tests = testGroup "Test.Cases.Commit" [ testProperty "lookup non existing commit" prop_lookup_non_existing_commit
                                      , testProperty "lookup an existing commit" prop_lookup_existing_commit
                                      ]