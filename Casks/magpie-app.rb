cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1077"
  sha256 arm:   "34eb957f278c14655dbd888c508a06779662e9bc0d4ea73fc4f8fea320c0e926",
         intel: "9dd487bc0a8ec74ce87185952dd7359ee61cf3f8609f8fcbcbcf2c7c60bd1461"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
