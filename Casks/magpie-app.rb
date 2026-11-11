cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3761"
  sha256 arm:   "0696247e33c2acffd9d831ba6118622bb81a62b649c0626ef73bf4ec41e8dff3",
         intel: "169fd25622ba7d732c748fe428ed3150124a1cee485a603f68182757f1286a29"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
