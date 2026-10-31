cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2380"
  sha256 arm:   "71689e66c670fa358652ba27052bba2e6ab07b393b4037828379906c9ce53071",
         intel: "a8b9b865deca889907239bfa376b71ebc8e6366b879baa2d49e28a97cdeb3bc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
