cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4742"
  sha256 arm:   "0bd20d55b6e00e2f37a68bbab4cf3450797b4d715eccec0ed76a8c6c0222ca6d",
         intel: "92edde97b0518c75b2ced5456b09df893cd65b31b8d27c4f4fecaf5ecde0267f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
