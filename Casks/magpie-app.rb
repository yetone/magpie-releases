cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2902"
  sha256 arm:   "39495da8c39175dedc7c57e06e311db17653d10a436d676af195e0a3c6c5cb6d",
         intel: "e63bbe654cdad283c1968518f934220694fd9a5c0c4f73d8ed5a5a4f07a4fac7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
