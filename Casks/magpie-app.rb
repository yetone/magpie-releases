cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3799"
  sha256 arm:   "06922e5ee036b29580ade2724ffd97b98e0ce1f36c95f3a5ac06a0abb8e42eb2",
         intel: "2d48e971ba2f4154b9e705ebda41d5c1c494e3597e0e927dbeb58c7676873c30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
