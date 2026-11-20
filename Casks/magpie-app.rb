cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4613"
  sha256 arm:   "084891871856b45ba1bf4331bfb7259052db0251b529253322933aedbec07462",
         intel: "8dba857b2de0ae1ab026fa1fb077ca2966850470fa5880631477e80e453f4bc2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
