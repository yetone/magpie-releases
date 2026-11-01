cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2570"
  sha256 arm:   "ba36ef78a54eb8f2abea07254abbd7eefd9e760edcb90fb37907e145fdc5c3aa",
         intel: "d06fc0280a9944e4e4fd291b8ff15724fe566b0b196694b4b3867a22fe7c9dad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
