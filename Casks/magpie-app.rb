cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1023"
  sha256 arm:   "ce2b759d3c73b9ff7810e08ac73ef3ae3d071fb3cbf579c541c23b5364b0c5ba",
         intel: "0d3a653e809a1fd5a67d98ffec683e5c7f246fd14ce35df0ee2d6746794aa7a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
