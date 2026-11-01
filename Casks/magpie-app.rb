cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2547"
  sha256 arm:   "5ff7db6a6b50d525e8927a55b3b068180c1b7860039961840fb00f326b2cb316",
         intel: "3aa8bf284932049b550c25c0d7c49028f83df345e7d8527371421ad4c4a3d257"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
