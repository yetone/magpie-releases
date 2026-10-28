cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1933"
  sha256 arm:   "83d8b6334b5de3e09f57f9e6d589c477f90683b3ac04643c8ab9769a15abcd5a",
         intel: "c3e16de1cf683c487bba0aef6cfff4ec435efb1e942dba0d872ee5ad02fc548d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
