cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4185"
  sha256 arm:   "dad8fcc57b086e7af81ae6f2afea31129e9d8a2f9038443665239e9e26b094fa",
         intel: "0acc64a852bc7c7ab4c6e9a62539fcce533bd116841ff4804a67bd5e7439b88b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
