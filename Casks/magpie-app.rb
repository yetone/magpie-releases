cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2646"
  sha256 arm:   "e0a704f100d3777ffb5a9c23bfc37d78ab1a1af30372e05d1647770d341dd353",
         intel: "b382bfbb9b3f9508c522b10bd2686a3acc7a77ccb95f8a3d26d673370f214cb2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
