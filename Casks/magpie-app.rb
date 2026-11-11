cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3721"
  sha256 arm:   "8c693bdf6e7c49b6c3a9f6f3a8c101c48a8496473f632e10ce3ce867e42b1eaf",
         intel: "9d0d6bf2cda7a544d62fef2a734885564fdfc02b2f01173b19d99d9751945536"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
