cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2711"
  sha256 arm:   "ad5910fd04659373f1b6d91f77c0c8806a7a18b85a991a2bdde9918cdf12f8a6",
         intel: "41a3a645f8b33920f25aa94530e72d4d05f532ba6f595690a4890e9162416bc4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
