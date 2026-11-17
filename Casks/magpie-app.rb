cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4372"
  sha256 arm:   "c39bc610d92ae6ec4594ec9846f7c44108dbc9472230dc2324af942fbde1af75",
         intel: "040a293fd27ce3491371fda7a4d291c94e95c1d8d0a1bf235ba2748033571c64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
