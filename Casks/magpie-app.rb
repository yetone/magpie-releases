cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2729"
  sha256 arm:   "b1fe650c805bd44fd475c92e6c9fb8dc3d0a4469971170309074f80d3bdf222b",
         intel: "b517dafef98782da1c87528c7a529bf56050275568a4d3983abb9669e66a5aba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
