cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3863"
  sha256 arm:   "e0bb271eacfa7d68c29bd5a2d50b5589b04b12786625b209066e985f83f251ad",
         intel: "0a279afbdd26138dd5d777691426a48e4bd56222a01df1a0f6fa26880102f043"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
