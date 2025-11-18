cask "antigravity" do
  version "1.11.2-6251250307170304"
  sha256 :no_check

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version}/darwin-arm/Antigravity.dmg",
      verified: "edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/"
  name "Antigravity"
  desc "Google Antigravity application"
  homepage "https://antigravity.google/download"

  depends_on arch: :arm64

  app "Antigravity.app"
end
