cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5045"
  sha256 arm:   "90dd015e2b7bdc986cf2bb3e1cabbb9384c80b8e08275456d3d63e5948a38832",
         intel: "049d991d1b2755dae0718bc8d204edcf5ae54973b6923d96c97ff80e579eb280"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
