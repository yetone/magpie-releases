cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4369"
  sha256 arm:   "a8993bc25e2d1c3d1517ea1fdd988dc11511c6bc5ab9eb587d5ce07dbef6e52a",
         intel: "4ccbf3c65a23e8df3fdde3703078f05b14b3a42970ad008b153feac1fa9760fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
