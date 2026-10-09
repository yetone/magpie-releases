cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1146"
  sha256 arm:   "51436e68bf38ee87f1e0014e66306f8b52591cd62a7ee77d0871b4213a6d0e77",
         intel: "90a8180ee3f7a7efc59fcc71e5d865529bb1324248e4066ff2724f3b039ea615"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
