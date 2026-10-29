cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2057"
  sha256 arm:   "711b63cae271fd73d0d3b3ebe2bf2c250e9a90967c039dd7938a0126ff98de0c",
         intel: "b6bb965a922f1eb3f9b9e2aaced82efb139b7e6482ff22e9732ffcce16ffa1e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
