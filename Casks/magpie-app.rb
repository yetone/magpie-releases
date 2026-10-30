cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2154"
  sha256 arm:   "8cd843ff3ec86de00e0080c5206e84dc631e0178a1342397a4545292ecc13232",
         intel: "a99122712d73821f0d7897517764e78653c991aaad4265b31bd069e72dd531c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
