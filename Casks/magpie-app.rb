cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2098"
  sha256 arm:   "d961b2b2984cb32d957486e168d50f28ed2eabbc0d83c33eb904c4a2792cb6c9",
         intel: "900392a7d47111b2f5c6c8381b98baff05a9740fa33699826170996ac62d3507"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
