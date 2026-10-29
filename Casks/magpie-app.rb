cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1996"
  sha256 arm:   "fba40069e58170bff32bf222be1605a8a9509964bc63f13e32fb60ecc13bd24a",
         intel: "81c75cef17fbcd25a0add49ba99241f95564d045115c9210915701a112dd1755"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
