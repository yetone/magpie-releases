cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4715"
  sha256 arm:   "270c9ae127912d53ecf6c9f3c741508b4d02e89248689eae64a090ce3d926541",
         intel: "54b8e5b4720fd35af0896d325d40d07f6ae9e531ccac1faed875d6787e8c5e99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
