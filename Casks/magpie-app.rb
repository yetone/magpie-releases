cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4957"
  sha256 arm:   "da5e9d24e428fd30583f6961c334120278ca4ddac4ba05f4b098d8adbccbef7e",
         intel: "ea05f5a7928b5f47de684d4f8753b6a69d3a77eea745468edcf43ce3f9757383"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
