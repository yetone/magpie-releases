cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3729"
  sha256 arm:   "de3efa7d4f7f35f767fcf45cb656ec540e829c757e34c3880275afc5e23f1107",
         intel: "81af42495c5aa20ce05be1ba68416b39d40880c39ecaf71d907e3957d5094831"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
