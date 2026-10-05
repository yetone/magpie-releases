cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1027"
  sha256 arm:   "6f2933673063c54ca3143dde5a5f5217e73987c66bdd90802fafcbfd0248e0d8",
         intel: "bbd7053b064e926887f68433ab5d8690f1d0e6ce66cd894d1cdd23cd6ce790cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
