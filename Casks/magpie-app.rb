cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3222"
  sha256 arm:   "56bb05dc15e0b4a196b96197ea0b63bb6c4c5f81c87432fe82a4e15d9580edd6",
         intel: "afc9a097cfe55723cf584d42a90b7bb17572d4cafc14d86186b801b9fbd9f3fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
