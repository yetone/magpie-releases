cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1936"
  sha256 arm:   "d1d142f1d3304c1cd69075bfcb657653be962e580d54588bb3d2ae25bd3b1eb5",
         intel: "e3835091da99826fd77eeb9386c676f35dbb101619a0d50632c6dd948f0a4b63"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
