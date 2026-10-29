cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2051"
  sha256 arm:   "45940bb21ad45d9ff0f17de02548e6e5bdff0967c9b639a2836a7d45f8435e85",
         intel: "d78cdf4ba392bedbda1bcac4f9df7acef54afac39d44eb8ac81bf2d77f3f0b53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
