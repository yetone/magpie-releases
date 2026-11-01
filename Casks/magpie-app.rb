cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2595"
  sha256 arm:   "ad0687966fa7181fdd84ed4d0aad0ecc75e2009964ab4efa72ebaf5b272bf82e",
         intel: "adf75107f0d1d2257f16628df73fe46ff2559e4aefec47b780b0f2d1ba3277af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
