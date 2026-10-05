cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.948"
  sha256 arm:   "e33eae5a55d0fcb2649a3d99da5227fdfb6a1a2233dc06d3ba1e4078c1d25a75",
         intel: "df809c2d7d83f933e6cee9fec395304df2b800dd4417c74c75b0f5ed329472be"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
