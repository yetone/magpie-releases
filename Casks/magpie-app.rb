cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.936"
  sha256 arm:   "00f5a6213ee361f578e0db4d97cde050540f1b7b9d362d8a08a56d3619751c67",
         intel: "04b362365012cec966d1fe0aac71cf55c23ddac5778af5fdbf4cd8b41a6cdcf6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
