cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1877"
  sha256 arm:   "9bdada30be6e3f3b27ae3b570cc148384812f40a7a7e4af15bf829dfbd68f7b1",
         intel: "40ea6784f0fb5a30dc6beb0264d9499f80c4c22ba32dbb6d52338a0bf9e24de2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
