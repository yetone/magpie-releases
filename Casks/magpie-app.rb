cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2548"
  sha256 arm:   "826cc9974556527ece7056c83db4d53db71f955d132f929ace29437ceee09393",
         intel: "35ce39a14ec8125a9328ca5fe61a009175b3ca6a0b0d1273aa171519ad3935f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
