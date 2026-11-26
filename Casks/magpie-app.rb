cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4829"
  sha256 arm:   "655d039ac04aa991d09db96de52d665814b677b474d791efa751cb648934b686",
         intel: "2f4e68c23f4eb92a655e780e77673bb974a372adbd0474fa3fbf054e2e213d0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
