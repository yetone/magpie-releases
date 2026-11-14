cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4124"
  sha256 arm:   "42dae2b992c4b0243da14439686a3298046eeaeeb3b4a26b421e0df84888b58c",
         intel: "66bf458d9312d1234e080963aaa0959645eea025b5d9efc4f667b7329011041c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
