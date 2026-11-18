cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4421"
  sha256 arm:   "d66a670cb8fce560de9ec3205d0ef9cb943b24213a387f57ae8602276ab7e073",
         intel: "e2c79aa2319d87f70a1f4bc35af48c74d8561b0ac5d618d0a796e25ec0b92402"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
