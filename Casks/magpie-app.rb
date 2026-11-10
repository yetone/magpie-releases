cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3508"
  sha256 arm:   "8a1a04421d645d53ae6238b87237e2d9fdd0cb2acac383b42fef76406ef656ad",
         intel: "b01e89153feef5d9673ee0e6d26585f5bfcb379b0747ec1e41805f28e2aa9a47"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
