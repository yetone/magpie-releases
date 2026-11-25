cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4823"
  sha256 arm:   "d2d485caa519003ea8b67199db6fcf046e1af4bb36381e48effedb0dc107fad4",
         intel: "091064c3db68085dcad3c73e67915c2c83d0e2ec90bc7614bf0805fad9aeb12a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
