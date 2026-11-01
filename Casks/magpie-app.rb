cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2603"
  sha256 arm:   "f24e78e72ebc9335838bd26f6540e98e489c3d36d6e606e2dd8630bd68fde373",
         intel: "bc5e25e5c5ed2f13d738f57112afbd05856529739534c73e90c9f642a4ff67e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
