cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4946"
  sha256 arm:   "65aecb15792cc108158117157e173edce3fca32cf6da519654a8428cfe63ae14",
         intel: "c5b42bf9bc728842eb628e0546fb4613fab40de7be0e31ff97f04c370c7a5c7c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
