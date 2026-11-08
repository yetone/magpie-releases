cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3338"
  sha256 arm:   "167aa534c8213238e5ea1030a3bc96a0c7c61a032a02c5b032c5298a7cf3dbb1",
         intel: "bf3fe83cf6dd30af25b071b87e664d6fdabc3025001bc7bb2343ca485fc94b20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
