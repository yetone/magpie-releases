cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3014"
  sha256 arm:   "a0aa1169e8268c27325565387187ff5b0af1a31c54b303a6675dadc2480a939c",
         intel: "f16c39b8505aae2f3b64f0fc7fdadfeb9c75a0a4377a0545c430bff521bda703"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
