package alchemy.metarpc.chain.flow;

import java.util.List;
import lombok.Data;

@Data
public class NftHttpResponseV2 {
  private String owner;
  private List<NftObjectDataV2> nfts;
  private String updatedAt;
  private int nftCount;
  private int offset;
}

@Data
class NftObjectDataV2 {
  private ContractV2 contract;
  private NftId id;
  private String title;
  private String description;
  private String externalDomainViewUrl;
  private Media media;
  private List<Media> alternateMedia;
  private List<Attribute> attributes;
  private Object metadata;
}

@Data
class Media {
  private String uri;
  private String mimeType;
}

@Data
class Attribute {
  private String name;
  private String value;
}

@Data
class ContractV2 {
  private String name;
  private String address;
  private String externalDomain;
}
