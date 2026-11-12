cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3826"
  sha256 arm:   "a287fbfa074a012c5428561b207a3572065afd3970f7795788e73adcd2dad065",
         intel: "911418f9f243808cfdbc10d3a5d1a55faa979cfebaffc7c6383882e7de64ee25"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
